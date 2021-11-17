#ifndef CMAINWINDOW_H
#define CMAINWINDOW_H

#include <QMainWindow>
#include <QCloseEvent>
#include <QSystemTrayIcon>
#include <QAction>
#include <QMenu>
#include <QStyle>

class CMainWindow : public QMainWindow
{
    Q_OBJECT

public:
    CMainWindow(QWidget *parent = nullptr);
    ~CMainWindow();

protected:
    void closeEvent(QCloseEvent * event);

private:
    QSystemTrayIcon *trayIcon;
    QMenu   *menu;
    QAction *viewWindow;
    QAction *quitAction;

private slots:
    void iconActivated(QSystemTrayIcon::ActivationReason reason);

    // QPaintDevice interface
};
#endif // CMAINWINDOW_H
