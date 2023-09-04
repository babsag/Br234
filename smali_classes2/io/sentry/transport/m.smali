.class final Lio/sentry/transport/m;
.super Ljava/lang/Object;
.source "AuthenticatorWrapper.java"


# static fields
.field private static final a:Lio/sentry/transport/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/transport/m;

    invoke-direct {v0}, Lio/sentry/transport/m;-><init>()V

    sput-object v0, Lio/sentry/transport/m;->a:Lio/sentry/transport/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/sentry/transport/m;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/transport/m;->a:Lio/sentry/transport/m;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/net/Authenticator;)V
    .locals 0
    .param p1    # Ljava/net/Authenticator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Ljava/net/Authenticator;->setDefault(Ljava/net/Authenticator;)V

    return-void
.end method
