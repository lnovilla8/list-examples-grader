CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests

if ! [-f ListExamples.java]
then
  echo "Missing ListExamples.java in student submission"
  echo "Score 0"
  exit
fi

javac $CPATH *.java &> compile.txt
if [$7 -ne 0]
then
  echo "Compilation error"
  echo "Score: 0"
  exit
