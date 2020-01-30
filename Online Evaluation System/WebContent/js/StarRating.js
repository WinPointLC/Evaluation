// very very imp Note : The created Custom element Star Rating gives an error(Uncomment this)
// Why -->
// >Stack Overflow
// I have a custom element defined like so:
//
// class SquareLetter extends HTMLElement {
//     constructor() {
//         super();
//         this.className = getRandomColor();
//     }
// }
// customElements.define("square-letter", SquareLetter);
// When the JavaScript file is included in HTML <head> tag, the Chrome console reports this error:
//
// Uncaught DOMException: Failed to construct 'CustomElement': The result must not have attributes
//
// But when the JavaScript file is included before the </body> ending tag, everything works fine. What's the reason?
//
// <head>
//     <script src="js/SquareLetter.js"></script> <!-- here -->
// </head>
// <body>
//     <square-letter>A</square-letter>
//     <script src="js/SquareLetter.js"></script> <!-- or here -->
// </body>

// Solution for above:
// When you move the script to after the element in the DOM, you cause the existing elements to go through the "upgrade" process.
// When the script is before the element, the element goes through the standard construction process.
// This difference is apparently causing the error to not appear in all cases, but that's an implementation detail and may change.

class StarRating extends HTMLElement {
    get value () {
        return this.getAttribute('value') || 0;
    }

    set value (val) {
        this.setAttribute('value', val);
        this.highlight(this.value - 1);
    }

    get number () {
        return this.getAttribute('number') || 5;
    }

    set number (val) {
        this.setAttribute('number', val);

        this.stars = [];

        while (this.firstChild) {
            this.removeChild(this.firstChild);
        }

        for (let i = 0; i < this.number; i++) {
            let s = document.createElement('div');
            s.className = 'star';
            this.appendChild(s);
            this.stars.push(s);
        }

        this.value = this.value;
    }
    
    highlight (index) {
        this.stars.forEach((star, i) => {
            star.classList.toggle('full', i <= index);
        });
    }

    constructor () {
        super();

        this.number = this.number;

        this.addEventListener('mousemove', e => {
            let box = this.getBoundingClientRect(),
                starIndex = Math.floor((e.pageX - box.left) / box.width * this.stars.length);

            this.highlight(starIndex);
        });

        this.addEventListener('mouseout', () => {
            this.value = this.value;
        });

        this.addEventListener('click', e => {
            let box = this.getBoundingClientRect(),
                starIndex = Math.floor((e.pageX - box.left) / box.width * this.stars.length);
            if(starIndex == 5)
               this.value = starIndex;
            else
            	this.value = starIndex + 1;        
            let rateEvent = new Event('rate');
            this.dispatchEvent(rateEvent);
        });
    }
}

customElements.define('x-star-rating', StarRating);
