var express = require('express');
var bodyParser = require('body-parser');
var app = express();

app.all('/*', function(req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");
	res.header("Access-Control-Allow-Headers", "X-Requested-With", "Content-Type, Accept");
	res.header("Access-Control-Allow-Methods", "POST, GET");
	next();
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

var tutorials = [
	{
		id: 1,
		title: "Android Studio Tutorial For Beginners",
		description: "Learn how to install Android Studio and then go through this tutorial to build your very first app",
		iframe: '<iframe width="560" height="315" src="https://www.youtube.com/embed/F-k5gwz_91o" frameborder="0" allowfullscreen></iframe>',
		thumbnail: "https://s3-us-west-2.amazonaws.com/devslopesvideo/androidwhite-learn.png"
	},
	{
		id: 2,
		title: "iOS App Icon Design In Photoshop",
		description: "Learn how to install Android Studio and then go through this tutorial to build your very first Android app.",
		thumbnail: "https://s3-us-west-2.amazonaws.com/devslopesvideo/androidwhite-learn.png",
		iframe: '<iframe width="560" height="315" src="https://www.youtube.com/embed/jpRBucuml2M" frameborder="0" allowfullscreen></iframe>'
	},
	{
		id: 3,
		title: "How to build an Apple TV App Tutorial for tvOS",
		description: "In this app we download popular movies from an IMDB service and implement scrolling and navigation on the Apple TV",
		thumbnail: "https://s3-us-west-2.amazonaws.com/devslopesvideo/tv-test.png",
		iframe: '<iframe width="560" height="315" src=https://www.youtube.com/embed/XmLdEcq-QNI" frameborder="0" allowfullscreen></iframe>'
	},
	{
		id: 4,
		title: "Photoshop Tutorial For Beginners How To Create a Log",
		description: "Learn how to make a professional logo in Photoshop without any design experience. This is a Photoshop tutorial for beginners that will give you all the basics",
		thumbnail: "https://s3-us-west-2.amazonaws.com/devslopesvideo/logo.png",
		iframe: '<iframe width="560" height="315" src=https://www.youtube.com/embed/CrKnswpftp4" frameborder="0" allowfullscreen></iframe>'
	}
];


app.get('/tutorials', function(req, res) {
	console.log("GET from server");
	res.send(tutorials);
});

app.listen(8000);
