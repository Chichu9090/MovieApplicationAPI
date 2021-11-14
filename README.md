# MovieApplicationAPI

# Extract the MovieApplicationAPI.zip
# Run the API.sql file 

# Open appsettings.json
# Edit  and Add "Data Source=MSSQL_Server_Name;Initial Catalog=DBName;User Id=DB_UserID;password=Password;"

# Build the Project If any errors install below NuGet Packages 
# Microsoft.AspNetCore.Mvc.NewtonsoftJson 3.1.16
# System.Data.SqlClient 4.8.3

# Launch the application 
# Initial page will be http://localhost:57520/weatherforecast with all the Method details


Below API Methods are supported :
                                       GET Method : http://localhost:57520/api/MovieApplication/MovieDetails
                                       GET Method : http://localhost:57520/api/MovieApplication/ActorDetails
                                       GET Method : http://localhost:57520/api/MovieApplication/ProducerDetails


                                       POST Method : http://localhost:57520/api/MovieApplication/CreateMovie
                                       Body details need to be passed like below JSON :
                                       {
                                                ""MovieName"": ""Thor 2"",
                                                ""MovieReleaseDate"": ""2021-11-13"",
                                                ""MovieActors"": ""1"",
                                                ""MovieProducers"": ""1,2""
                                       }

                                       POST Method : http://localhost:57520/api/MovieApplication/CreateActor
                                       Body details need to be passed like below JSON :
                                       {
                                                ""ActorName"": ""Actor 1"",
                                                ""ActorBio"": ""Actor 1 Bio"",
                                                ""ActorDOB"": ""2021-11-13"",
                                                ""ActorGender"": ""Male""
                                       }

                                       POST Method : http://localhost:57520/api/MovieApplication/CreateProducer
                                       Body details need to be passed like below JSON :
                                       {
                                                ""ProducerName"": ""Producer 1"",
                                                ""ProducerBio"": ""Producer 1 Bio"",
                                                ""ProducerDOB"": ""2021-11-13"",
                                                ""ProducerCompany"": ""Producer Company"",
                                                ""ProducerGender"": ""Male""
                                       }

                                       PUT Method : http://localhost:57520/api/MovieApplication/UpdateMovie
                                       Body details need to be passed like below JSON :
                                       {
                                                ""MovieName"": ""Thor 2"",
                                                ""MovieReleaseDate"": ""2021-11-13"",
                                                ""MovieActors"": ""1"",
                                                ""MovieProducers"": ""1,2""
                                       }
