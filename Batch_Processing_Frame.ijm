title = "Choose The Directory for Import Images";
  msg = "Please choose the directory contains your image";
  waitForUser(title, msg);
OriginDir = getDirectory("Choose a Directory");
FileArray = getFileList(OriginDir);
title = "Choose The Directory for Save";
  msg = "Please choose the directory to save your image";
  waitForUser(title, msg);
SaveDir = getDirectory("Choose a Directory");
length = lengthOf(FileArray);
for (i = 0; i < length; i++) {
	open(OriginDir+"/"+FileArray[i]);
	run("Invert");
	saveAs("BMP", SaveDir+FileArray[i]);
	close();
}