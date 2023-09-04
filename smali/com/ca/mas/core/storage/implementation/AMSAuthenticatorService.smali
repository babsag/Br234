.class public Lcom/ca/mas/core/storage/implementation/AMSAuthenticatorService;
.super Landroid/app/Service;
.source "AMSAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/core/storage/implementation/AMSAuthenticatorService$a;
    }
.end annotation


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
    new-instance p1, Lcom/ca/mas/core/storage/implementation/AMSAuthenticatorService$a;

    invoke-direct {p1, p0, p0}, Lcom/ca/mas/core/storage/implementation/AMSAuthenticatorService$a;-><init>(Lcom/ca/mas/core/storage/implementation/AMSAuthenticatorService;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
