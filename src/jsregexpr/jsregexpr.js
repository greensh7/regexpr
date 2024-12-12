#!/usr/bin/env nodejs

//
// jsregexpr
// Regex replacer 1.1
//
// Uncopyright (u)2019-2025, Shaun Green
//

// No replaceAll() in Javascript nodejs versions <15
//if(typeof String.prototype.replaceAll === "undefined") {
//    String.prototype.replaceAll = function(match, replace) {
//       return this.replace(new RegExp(match, 'g'), () => replace);
//    }
//}

var args = process.argv.slice(2);
var re = new RegExp(args[0]);
var str = args[1];
var rep = (!!args[2] ? args[2] : "");
console.log(str.replace(re, rep));
