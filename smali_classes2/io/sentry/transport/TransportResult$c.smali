.class final Lio/sentry/transport/TransportResult$c;
.super Lio/sentry/transport/TransportResult;
.source "TransportResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/TransportResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lio/sentry/transport/TransportResult$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/transport/TransportResult$c;

    invoke-direct {v0}, Lio/sentry/transport/TransportResult$c;-><init>()V

    sput-object v0, Lio/sentry/transport/TransportResult$c;->a:Lio/sentry/transport/TransportResult$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/sentry/transport/TransportResult;-><init>(Lio/sentry/transport/TransportResult$a;)V

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
