// Tocca search JavaScript

class Keyboard {

	// Constructor, takes two jQuery-ied HTML input elements
	constructor(in1, in2) {
		this.input1 = in1;
		this.input2 = in2;

		// Copy initial values from HTML
		this.text1 = this.input1.val();
		this.text2 = this.input2.val();

		// Input is on field 1
		if (this.text1) {
			this.focus(2)
		} else {
			this.focus(1)
		}
	}

	focus(number) {
		this.focusNumber = number;
		if (number == 1) {
			this.input1.focus();
		} else {
			this.input2.focus();
		}
	}
	// Type something into the searchbar
	type(something) {
		if (this.focusNumber == 1) {
			this.type1(something)
		} else {
			this.type2(something)
		}
	}

	type1(something) {
		this.text1 = something;
		this.update();
		this.focus(2);
	}

	type2(something) {
		this.text2 += something;
		this.update();
	}

	// Delete last typed char
	backspace() {
		if (this.focusNumber == 1) {
			this.text1 = ''
		} else {
			if (this.text2 == '') {
				this.clear()
			} else {
				this.text2 = this.text2.slice(0, -1);
			}
		}
		this.update();
	}

	dot() {
		this.focus(2)
	}

	// Restart, clear
	clear() {
		this.text1 = '';
		this.text2 = '';
		this.focus(1);
		this.update();
	}

	// Write current text into HTML-inputs
	update() {
		this.input1.val(this.text1);
		this.input2.val(this.text2);
	}
}
