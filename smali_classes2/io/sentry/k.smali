.class public final synthetic Lio/sentry/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lio/sentry/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/k;

    invoke-direct {v0}, Lio/sentry/k;-><init>()V

    sput-object v0, Lio/sentry/k;->a:Lio/sentry/k;

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

    invoke-static {}, Lio/sentry/e1;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
