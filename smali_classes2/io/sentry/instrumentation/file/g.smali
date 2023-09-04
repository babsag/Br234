.class public final synthetic Lio/sentry/instrumentation/file/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/instrumentation/file/h$a;


# instance fields
.field public final synthetic a:Lio/sentry/instrumentation/file/SentryFileOutputStream;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/g;->a:Lio/sentry/instrumentation/file/SentryFileOutputStream;

    iput-object p2, p0, Lio/sentry/instrumentation/file/g;->b:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/instrumentation/file/g;->a:Lio/sentry/instrumentation/file/SentryFileOutputStream;

    iget-object v1, p0, Lio/sentry/instrumentation/file/g;->b:[B

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->i([B)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
