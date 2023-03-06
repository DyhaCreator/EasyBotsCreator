const path = require('path');
const url = require('url');
const {app, BrowserWindow} = require('electron');
const fs = require('fs');

let win;

function createWindow(){
    win = new BrowserWindow({
        width: 800,
        height: 600,
        icon: __dirname + "/sourse/icon.png",
        webPreferences: {
            nodeIntegration: true,
            contextIsolation: false,
            //enableRemoteModule: true
        }
    });

    win.setMenu(null);

    win.loadURL(url.format({
        pathname: path.join(__dirname,'index.html'),
        protocol: 'file',
        slashes: true
    }));

    win.on('closed', () => {
        win = null;
    });

    //win.webContents.openDevTools();
}

app.on('ready',createWindow);