.class final Lio/sentry/o1$a;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/sentry/SentryOptions;

.field private volatile b:Lio/sentry/ISentryClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile c:Lio/sentry/Scope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/Scope;)V
    .locals 1
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ISentryClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/sentry/Scope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISentryClient is required."

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/ISentryClient;

    iput-object p2, p0, Lio/sentry/o1$a;->b:Lio/sentry/ISentryClient;

    const-string p2, "Scope is required."

    .line 3
    invoke-static {p3, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/Scope;

    iput-object p2, p0, Lio/sentry/o1$a;->c:Lio/sentry/Scope;

    const-string p2, "Options is required"

    .line 4
    invoke-static {p1, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/o1$a;->a:Lio/sentry/SentryOptions;

    return-void
.end method

.method constructor <init>(Lio/sentry/o1$a;)V
    .locals 1
    .param p1    # Lio/sentry/o1$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p1, Lio/sentry/o1$a;->a:Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/o1$a;->a:Lio/sentry/SentryOptions;

    .line 7
    iget-object v0, p1, Lio/sentry/o1$a;->b:Lio/sentry/ISentryClient;

    iput-object v0, p0, Lio/sentry/o1$a;->b:Lio/sentry/ISentryClient;

    .line 8
    new-instance v0, Lio/sentry/Scope;

    iget-object p1, p1, Lio/sentry/o1$a;->c:Lio/sentry/Scope;

    invoke-direct {v0, p1}, Lio/sentry/Scope;-><init>(Lio/sentry/Scope;)V

    iput-object v0, p0, Lio/sentry/o1$a;->c:Lio/sentry/Scope;

    return-void
.end method


# virtual methods
.method public a()Lio/sentry/ISentryClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/o1$a;->b:Lio/sentry/ISentryClient;

    return-object v0
.end method

.method public b()Lio/sentry/SentryOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/o1$a;->a:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public c()Lio/sentry/Scope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/o1$a;->c:Lio/sentry/Scope;

    return-object v0
.end method

.method public d(Lio/sentry/ISentryClient;)V
    .locals 0
    .param p1    # Lio/sentry/ISentryClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/o1$a;->b:Lio/sentry/ISentryClient;

    return-void
.end method
