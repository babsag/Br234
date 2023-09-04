.class public final synthetic Lio/sentry/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic a:Lio/sentry/w0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/a;->a:Lio/sentry/w0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lio/sentry/a;->a:Lio/sentry/w0;

    invoke-virtual {v0, p1, p2}, Lio/sentry/w0;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
