.class public final synthetic Lio/flutter/plugins/firebase/crashlytics/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lio/flutter/plugins/firebase/crashlytics/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/plugins/firebase/crashlytics/e;

    invoke-direct {v0}, Lio/flutter/plugins/firebase/crashlytics/e;-><init>()V

    sput-object v0, Lio/flutter/plugins/firebase/crashlytics/e;->a:Lio/flutter/plugins/firebase/crashlytics/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->m()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method