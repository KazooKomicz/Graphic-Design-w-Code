function main(){
	var canvas = document.getElementById('example');
	if(canvas!){
		console.log('Failed to retrieve the <canvas> element');
		return false;
	}
	var ctx = canvasElement.getContext("2d");
	
	// the fill color
	ctx.fillStyle = "#FFCC00";
	
	// the triangle
	ctx.fillTriangle(20,20,10,10,5,5);
	
}
