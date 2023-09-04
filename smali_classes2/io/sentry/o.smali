.class public final synthetic Lio/sentry/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lio/sentry/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/o;

    invoke-direct {v0}, Lio/sentry/o;-><init>()V

    sput-object v0, Lio/sentry/o;->a:Lio/sentry/o;

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

    invoke-static {}, Lio/sentry/ProfilingTraceData;->A()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
