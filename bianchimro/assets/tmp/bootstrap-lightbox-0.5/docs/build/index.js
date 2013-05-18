#!/usr/bin/env node
var hogan = require('hogan.js');
var fs    = require('fs');

var layout, pkg;
var data  = {};
var pagesData  = {};
var pages = [
	"home",
	"demo",
	"usage",
	"bonus"
]; 

// Get bootstrap-lightbox's package.json file
pkg = JSON.parse( fs.readFileSync(__dirname + '/../../package.json', 'utf-8') );

data.version = pkg.version || "";

// compile layout template
layout = fs.readFileSync(__dirname + '/../templates/layout.mustache', 'utf-8');
layout = hogan.compile(layout);



pages.forEach(function(name)
{
	var page = fs.readFileSync(__dirname  + '/../templates/' + name + '.mustache', 'utf-8');

	page = hogan.compile(page);

	pagesData[ name ] = page;//.render(data);

});

var index = layout.render(data,pagesData);

fs.writeFileSync(__dirname + '/../' + 'index.html', index, 'utf-8');