pipeline {
agent any

```
stages {

    stage('Build') {
        steps {
            bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" "SourceCode\\Cricket club management system.sln"'
        }
    }

    stage('Deploy') {
        steps {
            bat 'if not exist C:\\Deploy\\CricketClub mkdir C:\\Deploy\\CricketClub'
            bat 'xcopy /E /I /Y "SourceCode\\Cricket club management system\\*" "C:\\Deploy\\CricketClub\\"'
        }
    }

    stage('Verify') {
        steps {
            bat 'dir C:\\Deploy\\CricketClub'
        }
    }
}

post {
    success {
        echo 'Build Successful'
    }

    failure {
        echo 'Build Failed'
    }
}
```

}
