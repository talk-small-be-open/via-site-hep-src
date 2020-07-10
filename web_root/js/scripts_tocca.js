// JavaScript für VIA Tocca


// function onMapPairsDrop(dropzone, draggable) {
//   $(dropzone).children('div.rightObject').prepend(draggable);
// 	$(draggable).css({top:0, left:0});
// }

function swapElement(a, b) {
  // create a temporary marker div
  var aNext = $('<div>').insertAfter(a);
  a.insertAfter(b);
  b.insertBefore(aNext);
  // remove marker div
  aNext.remove();
}


// Map Pairs

function onMapPairsSelectionResult(correct, exerciseId, rightObjectId) {
	var objectPair = $('#'+exerciseId).find('div.objectPair').has('div.leftObject.selected');
	var leftObject = objectPair.find('div.leftObject.selected');
	var oldRightObject = objectPair.find('div.rightObject');
	var newRightObject = $('#'+rightObjectId);

	if (correct) {
		swapElement(oldRightObject, newRightObject);

		leftObject.removeClass('selected').addClass('correct');
		newRightObject.removeClass('selected').addClass('correct');
	} else {
		$("div.objectPair div.selected").removeClass("selected");
	}
}

function onMapPairsTapLeft(element) {
	if (!$(element).hasClass("correct")) {
		$("div.objectPair div.leftObject").removeClass("selected");
		$(element).addClass("selected");
	}
}

function onMapPairsTapRight(element, callbackToCorrect) {
	if (!$(element).hasClass("correct")) {
		$("div.objectPair div.rightObject").removeClass("selected");
		$(element).addClass("selected");
		callbackToCorrect();
	}
}


// Drag/Drop

function onDragDropDrop(dropzone, draggable) {
  $(dropzone).append(draggable);
	$(draggable).css({top:0, left:0});
}


function textinput_markAsEmpty(event, elementId) {
	var element = $('#'+elementId);
	event.stopPropagation();

	element.toggleClass('markedAsEmpty');

	if (element.hasClass('markedAsEmpty')) {
		$(event.target).addClass('active');
		element.val('---')
	} else {
		$(event.target).removeClass('active');
		element.val('')		
	}	
}


/* Haupt JS init */
$(document).ready(function(){

	JoelPurra.PlusAsTab.setOptions({
		// Use the enter key as tab keys
		key: [13]
	});	

	$('.popover').webuiPopover({trigger:'hover'});
	$('span.dictionaryEntry').webuiPopover({trigger:'hover'});
	$('input.clozeTextPlaceholder').plusAsTab();

  $("textarea").autosize();

	// Lazy load von Bildern installieren
	setLazy();
	lazyLoad();
	$(window).on('scroll', lazyLoad);
	
});
