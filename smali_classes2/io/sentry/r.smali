.class public final synthetic Lio/sentry/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;


# instance fields
.field public final synthetic a:Lio/sentry/ILogger;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/sentry/w0;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/w0;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/r;->a:Lio/sentry/ILogger;

    iput-object p2, p0, Lio/sentry/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/r;->c:Lio/sentry/w0;

    iput-object p4, p0, Lio/sentry/r;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final send()V
    .locals 4

    iget-object v0, p0, Lio/sentry/r;->a:Lio/sentry/ILogger;

    iget-object v1, p0, Lio/sentry/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/r;->c:Lio/sentry/w0;

    iget-object v3, p0, Lio/sentry/r;->d:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lio/sentry/h1;->c(Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/w0;Ljava/io/File;)V

    return-void
.end method
