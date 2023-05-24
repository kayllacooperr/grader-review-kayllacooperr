CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'

cp student-submission/ListExamples.java ./
javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples



# CPATH=".;../lib/hamcrest-core-1.3.jar;../lib/junit-4.13.2.jar"


# rm -rf student-submission
# rm -rf grading-area

# mkdir grading-area

# git clone $1 student-submission
# echo 'Finished cloning'

# if [[ -f student-submission/ListExamples.java ]]
# then
#  echo "The file ListExamples.java exists in the directory."
# else
#  echo "The file ListExamples.java does not exist in the directory."
#  exit 1
# fi
# cp -r *.java grading-area
# cp -r student-submission/*.java grading-area


# cd grading-area
# javac -cp $CPATH *.java

# # Draw a picture/take notes on the directory structure that's set up after
# # getting to this point

# # Then, add here code to compile and run, and do any post-processing of the
# # tests
