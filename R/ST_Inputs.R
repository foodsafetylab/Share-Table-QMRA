# BASIC INPUTS ===========================================================================================================


# Selection of Hazard -----------------------------------------------------
  #Instructions: Select Hazard with 1, set non selected ones as 0
  salmonella<-0
  E_coli<-0
  norovirus<-1
  allergen<-0

  # Inputs for Iterations. Student, Services, Meal_Days ---------------------
  #Instructions: Calculated or simply input a number in N_Iterations and # the calculation
  
  #Students data: Initial Iterations i
  
  Students_p_grade<-89
  
  NSLP_rate<-.73
  
  N_Iterations<-round((Students_p_grade*NSLP_rate),0) #65
  
  #Serivices, number of days we are trying to iterate. Lunch periods per day
  Service_No<-5
  
  #Days we are trying to Iterate. Days
  Food_Days<-5


 
# Sevice Line Information -------------------------------------------------
  
  #Initial Number of fruit
  Initial_Fr<-75 #Number of fruit 
  Initial_Pss<-75 #number of Packaged shelf stable
  Initial_Pre<-75 #number of packaged refrigirated
  
  #row size in selection table
  Row_size_Fr<-20
  Row_size_Pss<-20
  Row_size_Pre<-20  
  
  
# Inputs for Calculation of Student Contamination -------------------------
  
  #If students won't carry anything then set Pr os 0
  
  Pr_Student_iC<-0 #probability of 1 student being contaminated. #set as 0 if self calculated. 
  
  
  Number_Student_Pathogens<-1
  
  Student_Pathogen_No<-c(1)  #No Student that is contaminated to enter iteration
  Student_Pathogen_Service<-c(1) #service in which contaminated kid enter the. 
  Student_Pathogen_Day<-c(1)#Day in which contaminated kids may enter system. 


  
  
#Inputs for allergen contamination ----------------------------------------
  
  Pr_Student_Allergen<-0 #probability of student bringing in Allergens
  Number_Student_Allergens<-1
  
  Student_Allergen_No<-c(1)  #No Student that is contaminated to enter iteration
  Student_Allergen_Service<-c(1) #service in which contaminated kid enter the. 
  Student_Allergen_Day<-c(1)#Day in which contaminated kids may enter system. 
  

# Inputs Behavioral Probabilities -----------------------------------------

  #Porbability of Student touching other line items before picking their food. 
  Pr_touch_Food<-0.7

  #Probability of student Picking up food from line-

  #Probability of Selecting Fruit
  Pr_select_Fr<-.56 #.23 other source
  #Probability of Selecting Pss
  Pr_select_Pss<-.59 #0.37 other source
  #Probability of selecting Pre
  Pr_select_Pre<-.96 #0.78 other source


  #Proabbility of consuming Food
  Pr_eat_Fr<-.63 #.48  
  Pr_eat_Pss<-.627 #.77
  Pr_eat_Pre<-.674 #.85

  #Probability of sharing food. 

  Pr_share_Food<-.7

  #Probability of student picking an additional item from share table. 

  Pr_Pick_ST_Fr<-.1
  Pr_Pick_ST_Pss<-.1
  Pr_Pick_ST_Pre<-.1

  #Probability Sutdent eats share table item

  Pr_eat_ST_Fr<-.9
  Pr_eat_ST_Pss<-.9
  Pr_eat_ST_Pre<-.9


# Washing Parameters ------------------------------------------------------
  
  #Reduction achieved by washing

  Reduction_wash<-(-2) #log Reduction by washing


# Growth Conditions Inputs ------------------------------------------------------------------
  

  #Storage Infromation for growth
  
  #Temperature at Share Table
  Temp_RT<-25
  #Temperature at refrigeration
  Temp_Ref<-4
  #Time over night storage
  Time_ON<-12
  #Time of each service all in hours. 
  Time_Service<-.50
  #Time between Services
  Time_Turnaround<-.06
  
  # Inputs for Milk Spoilage -------------------------------------------------
  
  Initial_Spoilage_Con<-1.0 # Initial Spoilage organism concentration Aerobic Plate Count in log CFU/mL
  Spoilage_Treshold<-7 #Considered spoiled milk. APCs log CFU/g
  

#COMPLEX INPUTS =============================================================================
  

# Inputs for Initial Food Contamination -----------------------------------
  
  
  #Toggle for calculated contamination, defaul is 0
  Calculated_Cont_Fr<-0
  Calculated_Cont_Pss<-1
  Calculated_Cont_Pre<-1
  
  #surface are of hand palm for when converting from cm^2 
  Student_PSA<-50.675 #cm^2
  
  #Fruit physical characteristics used for calculation
  Fr_Mean_area<-184.7 #cm2
  Fr_sd_area<- 8.6 #cm2
  Fr_Mean_weight<-171.1 #g
  Fr_sd_weight<-6.0 #g
  
  #Pss physical Characteristics
  Pss_Mean_area<-270 #cm2
  
  #Pre physical characteristics
  Pre_Mean_area<- 300 #cm2
  
#Salmonella
  
  #Fr Contamination per log CFU/ cm2 
  Fr_Contamination_salmonella<- (-4.16) #Salmonella
  #Prevalence of pathogens in Fruit
  Prevalence_Salmonella_Fr<-.04 #Probability of contamination.
  
  #Pss Contamination per log CFU/ cm2 
  Pss_Contamination_salmonella<- (0) #Salmonella
  #Prevalence of pathogens in Pss
  Prevalence_Salmonella_Pss<-0 #Probability of contamination.
  
  #Pre Contamination per log CFU/ cm2 
  Pre_Contamination_salmonella<- (0) #Salmonella
  #Prevalence of pathogens in Pre
  Prevalence_Salmonella_Pre<-0 #Probability of contamination.
  
  
#Norovirus  
  #Prevalence of Norovirus in Fruit
  Prevalence_Norovirus_Fr<-rbetagen(1,0.79,1.03,0,.2) #probability of food item being contaminated. 
  
  #Contamination levels of Norvirus in Pss
  Pss_Contamination_norovirus<-(0)  #norovirus
  Prevalence_Norovirus_Pss<-0 #probability of food item being contaminated. 
  

  Pre_Contamination_norovirus<-(0)  #norovirus
  Prevalence_Norovirus_Pre<- 0 #probability of food item being contaminated. 
  


  

# TOGGLES ==========================================================================

  
#All toggles 0 = no 1 == yes
  
#Growth, do we want to simulate growth of pathogens? 
  
  Growth<-1
  
# Washing Items Effect of washing items
  
  #Washing Between Services
  Wash_Between_Services<-0
  #Wash Selection Table Fruit
  Wash_Selection_YN_Fr<-0
  #Wash Share Table Items
  Wash_ST_YN_Fr<-0
  
#Share Table Toggle 
  
  #Include Share Table:
  Share_Table_YN<-1
  #NOTE: Turn off Re-Sharing and -ST to reservice too (next section)

# Re-Sharing, Re-Service 

  #Share Table to Service line after every Day
  STtoReservice_YN<-1
  #Re-Service of Items left in Service line after every service.
  Reservice_YN<-1
  #Re-Sharing of Share table items after every service
  Resharing_YN<-1
  

#Visuals Toggles, if we want to change units in figures. 
  
  Units_Per_gram<-0
  
  
#Allergen Toggles
  Toggle_SelfAssigned_Allergens<-1
  
#Initial Contamination
  Toggle_SelfAssigned_Pathogens<-1
  
#Wrapping Apples
  Wrapping_Apples<-0
  
  


  
