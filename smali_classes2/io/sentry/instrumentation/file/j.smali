.class final Lio/sentry/instrumentation/file/j;
.super Ljava/lang/Object;
.source "FileOutputStreamInitData.java"


# instance fields
.field final a:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final b:Lio/sentry/ISpan;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final c:Z

.field final d:Ljava/io/FileOutputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final e:Z


# direct methods
.method constructor <init>(Ljava/io/File;ZLio/sentry/ISpan;Ljava/io/FileOutputStream;Z)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/sentry/ISpan;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/instrumentation/file/j;->a:Ljava/io/File;

    .line 3
    iput-boolean p2, p0, Lio/sentry/instrumentation/file/j;->c:Z

    .line 4
    iput-object p3, p0, Lio/sentry/instrumentation/file/j;->b:Lio/sentry/ISpan;

    .line 5
    iput-object p4, p0, Lio/sentry/instrumentation/file/j;->d:Ljava/io/FileOutputStream;

    .line 6
    iput-boolean p5, p0, Lio/sentry/instrumentation/file/j;->e:Z

    return-void
.end method
