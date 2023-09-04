.class final Lio/sentry/SentryTracer$b;
.super Ljava/lang/Object;
.source "SentryTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lio/sentry/SentryTracer$b;


# instance fields
.field private final b:Z

.field private final c:Lio/sentry/SpanStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/SentryTracer$b;->d()Lio/sentry/SentryTracer$b;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryTracer$b;->a:Lio/sentry/SentryTracer$b;

    return-void
.end method

.method private constructor <init>(ZLio/sentry/SpanStatus;)V
    .locals 0
    .param p2    # Lio/sentry/SpanStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lio/sentry/SentryTracer$b;->b:Z

    .line 3
    iput-object p2, p0, Lio/sentry/SentryTracer$b;->c:Lio/sentry/SpanStatus;

    return-void
.end method

.method static synthetic a(Lio/sentry/SentryTracer$b;)Lio/sentry/SpanStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer$b;->c:Lio/sentry/SpanStatus;

    return-object p0
.end method

.method static synthetic b(Lio/sentry/SentryTracer$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/SentryTracer$b;->b:Z

    return p0
.end method

.method static c(Lio/sentry/SpanStatus;)Lio/sentry/SentryTracer$b;
    .locals 2
    .param p0    # Lio/sentry/SpanStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/SentryTracer$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lio/sentry/SentryTracer$b;-><init>(ZLio/sentry/SpanStatus;)V

    return-object v0
.end method

.method private static d()Lio/sentry/SentryTracer$b;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/SentryTracer$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryTracer$b;-><init>(ZLio/sentry/SpanStatus;)V

    return-object v0
.end method
