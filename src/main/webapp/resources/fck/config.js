/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function(config) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

	
	config.toolbar = [
		/*[ 'Source', '-', 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', 'Undo', 'Redo', 'SelectAll', 'RemoveFormat' ],
		'/',*/
		[ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript' ],
		[ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', 'NumberedList', 'BulletedList' ],
		/*[ 'NumberedList', 'BulletedList', 'Outdent', 'Indent', 'Blockquote', 'CreateDiv' ],*/
		[ 'Image', 'Table', 'Smiley', /*'HorizontalRule', 'SpecialChar', 'PageBreak'*/ ],
		[ 'Styles', 'Format', 'Font', 'FontSize', 'TextColor', 'BGColor', 'Maximize', 'ShowBlocks' ] 
	];
};
