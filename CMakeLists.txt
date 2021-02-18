cmake_minimum_required(VERSION 3.0.0)
enable_testing()
#
# unit tests (unit tests always  are prefixed with "unittest")
#
add_test(NAME unittest_test 
         COMMAND bash ut.sh)
#
# regular tests.
#         
add_test(NAME jenkins_simple_test 
         COMMAND bash testme.sh)
add_test(NAME showenv 
         COMMAND bash showenv.sh)
