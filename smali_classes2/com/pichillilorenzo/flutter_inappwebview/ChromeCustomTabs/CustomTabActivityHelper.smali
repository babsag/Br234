.class public Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;
.super Ljava/lang/Object;
.source "CustomTabActivityHelper.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;
    }
.end annotation


# instance fields
.field private a:Landroidx/browser/customtabs/CustomTabsSession;

.field private b:Landroidx/browser/customtabs/CustomTabsClient;

.field private c:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private d:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;

.field private e:Landroidx/browser/customtabs/CustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(Landroid/app/Activity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "customTabsIntent",
            "uri",
            "requestCode"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2
    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public bindCustomTabsService(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->b:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnection;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnection;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnectionCallback;)V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->c:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 4
    invoke-static {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method

.method public getSession()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->b:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->a:Landroidx/browser/customtabs/CustomTabsSession;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->a:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->e:Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->a:Landroidx/browser/customtabs/CustomTabsSession;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->a:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "extras",
            "otherLikelyBundles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->b:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public onServiceConnected(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->b:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->d:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;->onCustomTabsConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->b:Landroidx/browser/customtabs/CustomTabsClient;

    .line 2
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->a:Landroidx/browser/customtabs/CustomTabsSession;

    .line 3
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->d:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;->onCustomTabsDisconnected()V

    :cond_0
    return-void
.end method

.method public setConnectionCallback(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionCallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->d:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;

    return-void
.end method

.method public setCustomTabsCallback(Landroidx/browser/customtabs/CustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customTabsCallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->e:Landroidx/browser/customtabs/CustomTabsCallback;

    return-void
.end method

.method public unbindCustomTabsService(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->c:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->b:Landroidx/browser/customtabs/CustomTabsClient;

    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->a:Landroidx/browser/customtabs/CustomTabsSession;

    .line 5
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->c:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    return-void
.end method
