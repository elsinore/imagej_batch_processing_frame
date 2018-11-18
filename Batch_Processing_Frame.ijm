title = "The Directory for Import Images";
  msg = "The directory contains your image";
  waitForUser(title, msg);
OriginDir = getDirectory("Directory of images");
FileArray = getFileList(OriginDir);
title = "The Directory for Saving Results";
  msg = "The directory to save results";
  waitForUser(title, msg);
SaveDir = getDirectory("Directory for saving results");
length = lengthOf(FileArray);
for (i = 0; i < length; i++) {
	open(OriginDir+"/"+FileArray[i]);
	run("Invert");
	saveAs("BMP", SaveDir+FileArray[i]);
	close();
}