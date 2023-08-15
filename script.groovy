def buildApp() {
	echo 'build the application ...'
    echo "My variable value: ${env.MY_VARIABLE}"
    echo "inside buildApp()"
}



def testApp() {
	echo 'testing the application ...'
}

def deployApp() {

	echo 'testing the application ...'
    echo "deploy version is ${params.VERSION}"
}

return this
