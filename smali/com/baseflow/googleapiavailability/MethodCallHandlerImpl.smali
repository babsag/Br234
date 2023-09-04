.class public Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl$GooglePlayServicesAvailability;
    }
.end annotation


# static fields
.field private static final GOOGLE_PLAY_SERVICES_AVAILABILITY_NOT_AVAILABLE_ON_PLATFORM:I = 0x6

.field private static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_DISABLED:I = 0x4

.field private static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_INVALID:I = 0x5

.field private static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_MISSING:I = 0x1

.field private static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_UPDATING:I = 0x2

.field private static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_VERSION_UPDATE_REQUIRED:I = 0x3

.field private static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SUCCESS:I = 0x0

.field private static final GOOGLE_PLAY_SERVICES_AVAILABILITY_UNKNOWN:I = 0x7

.field private static final REQUEST_GOOGLE_PLAY_SERVICES:I = 0x3e8


# instance fields
.field private activity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method private toPlayServiceAvailability(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionResult"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/4 p1, 0x7

    return p1

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x5

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "call",
            "result"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "checkPlayServicesAvailability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "showDialog"

    .line 2
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->applicationContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    const/16 v2, 0x3e8

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;II)Z

    .line 10
    :cond_0
    invoke-direct {p0, v1}, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->toPlayServiceAvailability(I)I

    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_0
    return-void
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/googleapiavailability/MethodCallHandlerImpl;->activity:Landroid/app/Activity;

    return-void
.end method
