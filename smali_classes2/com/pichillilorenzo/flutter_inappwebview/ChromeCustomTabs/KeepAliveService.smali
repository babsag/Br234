.class public Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/KeepAliveService;
.super Landroid/app/Service;
.source "KeepAliveService.java"


# static fields
.field private static final a:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/KeepAliveService;->a:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/KeepAliveService;->a:Landroid/os/Binder;

    return-object p1
.end method
