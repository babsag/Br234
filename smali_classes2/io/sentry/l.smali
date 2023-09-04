.class public final synthetic Lio/sentry/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lio/sentry/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/l;

    invoke-direct {v0}, Lio/sentry/l;-><init>()V

    sput-object v0, Lio/sentry/l;->a:Lio/sentry/l;

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

    invoke-static {}, Lio/sentry/e1;->c()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
