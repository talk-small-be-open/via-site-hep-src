// Tocca search JavaScript

class Keyboard {

	// Constructor, takes two hidden HTML input element ids, and two DOM element id for display
	constructor(id) {
		var self = this;
		var container = $("#"+id);
		this.input1 = container.find("input.input1");
		this.input2 = container.find("input.input2");
		this.keyboard = container.find("div.keyboard");
		this.inputText = container.find("input.searchInputText");
		this.display1 = container.find("span.searchInput1");
		this.display2 = container.find("span.searchInput2");

		// Copy initial values from form input (if any)
		this.text1 = this.input1.val();
		this.text2 = this.input2.val();

		this.display1.click(function(){self.focus(1)});
		this.display2.click(function(){self.focus(2)});

		this.inputText.focus(function(){
			self.keyboard.addClass("disabled");
			self.lightsOut();
		});
		this.inputText.blur(function(){self.keyboard.removeClass("disabled")});
		
		this.focusNumber = 1;
		
		this.update();
		
		// Goto field 2 if field 1 is set
		if (this.text1) {
			this.focus(2)
		// } else {
		// 	this.focus(1)
		}
	}

	lightsOut() {
			this.display2.removeClass("focused");
			this.display1.removeClass("focused");
	}
	
	focus(number) {
		this.focusNumber = number;
		this.lightsOut();
		if (number == 1) {
			this.display1.addClass("focused");
		} else {
			this.display2.addClass("focused");
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
		this.display1.text(this.text1);
		this.display2.text(this.text2);
	}
}
