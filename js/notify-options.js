        last_message = null;
        function onShowNotification () {
            console.log('notification is shown!');
        }

        function onCloseNotification () {
            console.log('notification is closed!');
        }

        function onClickNotification (message) {
            window.open(last_message['link']);
            console.log('notification was clicked!');
        }

        function onErrorNotification () {
            console.error('Error showing notification. You may need to request permission.');
            Notify.requestPermission(onPermissionGranted, onPermissionDenied);
        }

        function onErrorNotification () {
            console.error('Error showing notification. You may need to request permission.');
        }

        function onPermissionGranted () {
            console.log('Permission has been granted by the user and message displayed');
            if(last_message){
                doNotification(last_message);
            }
        }

        function onPermissionDenied () {
            console.warn('Permission has been denied by the user');
        }

        function doNotification (msg) {
            var myNotification = new Notify(msg['title'], {
                body: msg['body'],
                tag: msg['title'],
                icon: msg['image'],
                notifyShow: onShowNotification,
                notifyClose: onCloseNotification,
                notifyClick: onClickNotification,
                notifyError: onErrorNotification,
                timeout: msg['timeout']
            });

            myNotification.show();
        }

        function tryToShow(message){
            if (!Notify.needsPermission) {
                doNotification(message);
            } else if (Notify.isSupported()) {
                Notify.requestPermission(onPermissionGranted, onPermissionDenied);
            }
        }