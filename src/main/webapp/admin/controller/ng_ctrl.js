/**
 * Created by larry on 10/13/15.
 */
function studentController($scope) {
    $scope.student = {
        firstName: "yiibai",
        lastName: "com",
        fullName: function() {
            var studentObject;
            studentObject = $scope.student;
            return studentObject.firstName + " " + studentObject.lastName;
        }
    };
}