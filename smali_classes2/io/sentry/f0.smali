.class public final synthetic Lio/sentry/f0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/ISerializer;

.field public final synthetic b:Lio/sentry/clientreport/ClientReport;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/f0;->a:Lio/sentry/ISerializer;

    iput-object p2, p0, Lio/sentry/f0;->b:Lio/sentry/clientreport/ClientReport;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/f0;->a:Lio/sentry/ISerializer;

    iget-object v1, p0, Lio/sentry/f0;->b:Lio/sentry/clientreport/ClientReport;

    invoke-static {v0, v1}, Lio/sentry/SentryEnvelopeItem;->d(Lio/sentry/ISerializer;Lio/sentry/clientreport/ClientReport;)[B

    move-result-object v0

    return-object v0
.end method
