.class public final synthetic Lio/sentry/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# static fields
.field public static final synthetic a:Lio/sentry/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/u;

    invoke-direct {v0}, Lio/sentry/u;-><init>()V

    sput-object v0, Lio/sentry/u;->a:Lio/sentry/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-static {p1}, Lio/sentry/Sentry;->d(Lio/sentry/SentryOptions;)V

    return-void
.end method
