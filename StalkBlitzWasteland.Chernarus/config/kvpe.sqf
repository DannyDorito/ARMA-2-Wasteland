private["_yiks","_ueew"];_yiks=[]call zfdd;[_yiks,'addPointsLogMaxSize',20]call zbrm;[_yiks,'statTrackingQueueMaxSize',20]call zbrm;[_yiks,'playerKill',5]call zbrm;[_yiks,'aiKill',3]call zbrm;[_yiks,'death',-1]call zbrm;_ueew=[]call zfdd;[_ueew,"LandVehicle",1]call zbrm;[_yiks,'vehicleBonus',_ueew]call zbrm;[_yiks,'startingBounty',100]call zbrm;[_yiks,'playerBounty',250]call zbrm;[_yiks,'aiBounty',250]call zbrm;_yiks