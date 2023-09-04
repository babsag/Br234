.class final Lio/sentry/instrumentation/file/i;
.super Ljava/lang/Object;
.source "FileInputStreamInitData.java"


# instance fields
.field final a:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final b:Lio/sentry/ISpan;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final c:Ljava/io/FileInputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final d:Z


# direct methods
.method constructor <init>(Ljava/io/File;Lio/sentry/ISpan;Ljava/io/FileInputStream;Z)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ISpan;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/FileInputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/instrumentation/file/i;->a:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lio/sentry/instrumentation/file/i;->b:Lio/sentry/ISpan;

    .line 4
    iput-object p3, p0, Lio/sentry/instrumentation/file/i;->c:Ljava/io/FileInputStream;

    .line 5
    iput-boolean p4, p0, Lio/sentry/instrumentation/file/i;->d:Z

    return-void
.end method
