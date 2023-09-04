.class public final synthetic Lio/sentry/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Scope$a;


# static fields
.field public static final synthetic a:Lio/sentry/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/v;

    invoke-direct {v0}, Lio/sentry/v;-><init>()V

    sput-object v0, Lio/sentry/v;->a:Lio/sentry/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/Session;)V
    .locals 0

    invoke-static {p1}, Lio/sentry/SentryClient;->i(Lio/sentry/Session;)V

    return-void
.end method
