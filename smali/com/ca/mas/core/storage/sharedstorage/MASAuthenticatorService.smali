.class public Lcom/ca/mas/core/storage/sharedstorage/MASAuthenticatorService;
.super Landroid/app/Service;
.source "MASAuthenticatorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/ca/mas/core/storage/sharedstorage/MASAuthenticator;

    invoke-direct {p1, p0}, Lcom/ca/mas/core/storage/sharedstorage/MASAuthenticator;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
