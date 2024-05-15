#!/usr/bin/env nodejs

//
// jsregexpr
// Regex replacer 1.0
//
// Uncopyright (u)2019-2024, Shaun Green
//

// No replaceAll() in Javascript nodejs versions <15
if(typeof String.prototype.replaceAll === "undefined") {
    String.prototype.replaceAll = function(match, replace) {
       return this.replace(new RegExp(match, 'g'), () => replace);
    }
}

var args = process.argv.slice(2);
//console.log(args[0]);
var re = new RegExp(args[0]);
var str = args[1];
var rep = (!!args[2] ? args[2] : "");
console.log(str.replaceAll(re, rep));
