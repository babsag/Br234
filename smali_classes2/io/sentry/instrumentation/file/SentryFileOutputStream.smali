.class public final Lio/sentry/instrumentation/file/SentryFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "SentryFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/instrumentation/file/SentryFileOutputStream$Factory;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/FileOutputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/sentry/instrumentation/file/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/sentry/instrumentation/file/j;)V
    .locals 4
    .param p1    # Lio/sentry/instrumentation/file/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 12
    iget-object v0, p1, Lio/sentry/instrumentation/file/j;->d:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->c(Ljava/io/FileOutputStream;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 13
    new-instance v0, Lio/sentry/instrumentation/file/h;

    iget-object v1, p1, Lio/sentry/instrumentation/file/j;->b:Lio/sentry/ISpan;

    iget-object v2, p1, Lio/sentry/instrumentation/file/j;->a:Ljava/io/File;

    iget-boolean v3, p1, Lio/sentry/instrumentation/file/j;->e:Z

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/instrumentation/file/h;-><init>(Lio/sentry/ISpan;Ljava/io/File;Z)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->b:Lio/sentry/instrumentation/file/h;

    .line 14
    iget-object p1, p1, Lio/sentry/instrumentation/file/j;->d:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->a:Ljava/io/FileOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/j;Lio/sentry/instrumentation/file/SentryFileOutputStream$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/j;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/instrumentation/file/j;Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1    # Lio/sentry/instrumentation/file/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    new-instance p2, Lio/sentry/instrumentation/file/h;

    iget-object v0, p1, Lio/sentry/instrumentation/file/j;->b:Lio/sentry/ISpan;

    iget-object v1, p1, Lio/sentry/instrumentation/file/j;->a:Ljava/io/File;

    iget-boolean v2, p1, Lio/sentry/instrumentation/file/j;->e:Z

    invoke-direct {p2, v0, v1, v2}, Lio/sentry/instrumentation/file/h;-><init>(Lio/sentry/ISpan;Ljava/io/File;Z)V

    iput-object p2, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->b:Lio/sentry/instrumentation/file/h;

    .line 11
    iget-object p1, p1, Lio/sentry/instrumentation/file/j;->d:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->a:Ljava/io/FileOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/j;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileOutputStream$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/j;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;ZLio/sentry/IHub;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 6
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->d(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/j;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;ZLio/sentry/IHub;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, p2, v0, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->d(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 7
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->e(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/j;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 p1, 0x0

    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Ljava/io/File;ZLio/sentry/IHub;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    invoke-static {v1, p2, v0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->d(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;-><init>(Lio/sentry/instrumentation/file/j;)V

    return-void
.end method

.method static synthetic a(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->d(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->e(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/io/FileOutputStream;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "No file descriptor"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Ljava/io/File;ZLjava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;
    .locals 7
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "file.write"

    .line 1
    invoke-static {p3, v0}, Lio/sentry/instrumentation/file/h;->d(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v4

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :cond_0
    move-object v5, p2

    .line 3
    new-instance p2, Lio/sentry/instrumentation/file/j;

    .line 4
    invoke-interface {p3}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p3

    invoke-virtual {p3}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v6

    move-object v1, p2

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lio/sentry/instrumentation/file/j;-><init>(Ljava/io/File;ZLio/sentry/ISpan;Ljava/io/FileOutputStream;Z)V

    return-object p2
.end method

.method private static e(Ljava/io/FileDescriptor;Ljava/io/FileOutputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/j;
    .locals 7
    .param p0    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/FileOutputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file.write"

    .line 1
    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/h;->d(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v4

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :cond_0
    move-object v5, p1

    .line 3
    new-instance p0, Lio/sentry/instrumentation/file/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lio/sentry/instrumentation/file/j;-><init>(Ljava/io/File;ZLio/sentry/ISpan;Ljava/io/FileOutputStream;Z)V

    return-object p0
.end method

.method private synthetic f(I)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic h([B)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic j([BII)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->b:Lio/sentry/instrumentation/file/h;

    iget-object v1, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/h;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public synthetic g(I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->f(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i([B)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->h([B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k([BII)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileOutputStream;->j([BII)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->b:Lio/sentry/instrumentation/file/h;

    new-instance v1, Lio/sentry/instrumentation/file/f;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/f;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;I)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/h;->c(Lio/sentry/instrumentation/file/h$a;)Ljava/lang/Object;

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->b:Lio/sentry/instrumentation/file/h;

    new-instance v1, Lio/sentry/instrumentation/file/g;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/g;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;[B)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/h;->c(Lio/sentry/instrumentation/file/h$a;)Ljava/lang/Object;

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileOutputStream;->b:Lio/sentry/instrumentation/file/h;

    new-instance v1, Lio/sentry/instrumentation/file/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/sentry/instrumentation/file/e;-><init>(Lio/sentry/instrumentation/file/SentryFileOutputStream;[BII)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/h;->c(Lio/sentry/instrumentation/file/h$a;)Ljava/lang/Object;

    return-void
.end method
