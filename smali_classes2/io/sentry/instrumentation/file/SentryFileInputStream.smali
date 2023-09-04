.class public final Lio/sentry/instrumentation/file/SentryFileInputStream;
.super Ljava/io/FileInputStream;
.source "SentryFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/instrumentation/file/SentryFileInputStream$Factory;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/FileInputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/sentry/instrumentation/file/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/sentry/instrumentation/file/i;)V
    .locals 4
    .param p1    # Lio/sentry/instrumentation/file/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 11
    iget-object v0, p1, Lio/sentry/instrumentation/file/i;->c:Ljava/io/FileInputStream;

    invoke-static {v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;->c(Ljava/io/FileInputStream;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 12
    new-instance v0, Lio/sentry/instrumentation/file/h;

    iget-object v1, p1, Lio/sentry/instrumentation/file/i;->b:Lio/sentry/ISpan;

    iget-object v2, p1, Lio/sentry/instrumentation/file/i;->a:Ljava/io/File;

    iget-boolean v3, p1, Lio/sentry/instrumentation/file/i;->d:Z

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/instrumentation/file/h;-><init>(Lio/sentry/ISpan;Ljava/io/File;Z)V

    iput-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->b:Lio/sentry/instrumentation/file/h;

    .line 13
    iget-object p1, p1, Lio/sentry/instrumentation/file/i;->c:Ljava/io/FileInputStream;

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->a:Ljava/io/FileInputStream;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/i;Lio/sentry/instrumentation/file/SentryFileInputStream$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/i;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/instrumentation/file/i;Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1    # Lio/sentry/instrumentation/file/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 9
    new-instance p2, Lio/sentry/instrumentation/file/h;

    iget-object v0, p1, Lio/sentry/instrumentation/file/i;->b:Lio/sentry/ISpan;

    iget-object v1, p1, Lio/sentry/instrumentation/file/i;->a:Ljava/io/File;

    iget-boolean v2, p1, Lio/sentry/instrumentation/file/i;->d:Z

    invoke-direct {p2, v0, v1, v2}, Lio/sentry/instrumentation/file/h;-><init>(Lio/sentry/ISpan;Ljava/io/File;Z)V

    iput-object p2, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->b:Lio/sentry/instrumentation/file/h;

    .line 10
    iget-object p1, p1, Lio/sentry/instrumentation/file/i;->c:Ljava/io/FileInputStream;

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->a:Ljava/io/FileInputStream;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/instrumentation/file/i;Ljava/io/FileDescriptor;Lio/sentry/instrumentation/file/SentryFileInputStream$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/i;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/File;Lio/sentry/IHub;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lio/sentry/IHub;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->d(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/FileDescriptor;Lio/sentry/IHub;)V

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;Lio/sentry/IHub;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->e(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/i;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Lio/sentry/instrumentation/file/i;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
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
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;-><init>(Ljava/io/File;Lio/sentry/IHub;)V

    return-void
.end method

.method static synthetic a(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->d(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->e(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/i;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/io/FileInputStream;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0    # Ljava/io/FileInputStream;
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
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

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

.method private static d(Ljava/io/File;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/i;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/io/FileInputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "file.read"

    .line 1
    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/h;->d(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    :cond_0
    new-instance v1, Lio/sentry/instrumentation/file/i;

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result p2

    invoke-direct {v1, p0, v0, p1, p2}, Lio/sentry/instrumentation/file/i;-><init>(Ljava/io/File;Lio/sentry/ISpan;Ljava/io/FileInputStream;Z)V

    return-object v1
.end method

.method private static e(Ljava/io/FileDescriptor;Ljava/io/FileInputStream;Lio/sentry/IHub;)Lio/sentry/instrumentation/file/i;
    .locals 2
    .param p0    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/FileInputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file.read"

    .line 1
    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/h;->d(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3
    :cond_0
    new-instance p0, Lio/sentry/instrumentation/file/i;

    const/4 v1, 0x0

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result p2

    invoke-direct {p0, v1, v0, p1, p2}, Lio/sentry/instrumentation/file/i;-><init>(Ljava/io/File;Lio/sentry/ISpan;Ljava/io/FileInputStream;Z)V

    return-object p0
.end method

.method private synthetic f(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
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
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

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
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic l(J)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->b:Lio/sentry/instrumentation/file/h;

    iget-object v1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->a:Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/h;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public synthetic g(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;->f(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i([B)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/instrumentation/file/SentryFileInputStream;->h([B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k([BII)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/instrumentation/file/SentryFileInputStream;->j([BII)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(J)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/instrumentation/file/SentryFileInputStream;->l(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    iget-object v1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->b:Lio/sentry/instrumentation/file/h;

    new-instance v2, Lio/sentry/instrumentation/file/b;

    invoke-direct {v2, p0, v0}, Lio/sentry/instrumentation/file/b;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2}, Lio/sentry/instrumentation/file/h;->c(Lio/sentry/instrumentation/file/h$a;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->b:Lio/sentry/instrumentation/file/h;

    new-instance v1, Lio/sentry/instrumentation/file/c;

    invoke-direct {v1, p0, p1}, Lio/sentry/instrumentation/file/c;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;[B)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/h;->c(Lio/sentry/instrumentation/file/h$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->b:Lio/sentry/instrumentation/file/h;

    new-instance v1, Lio/sentry/instrumentation/file/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/sentry/instrumentation/file/a;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;[BII)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/h;->c(Lio/sentry/instrumentation/file/h$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream;->b:Lio/sentry/instrumentation/file/h;

    new-instance v1, Lio/sentry/instrumentation/file/d;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/instrumentation/file/d;-><init>(Lio/sentry/instrumentation/file/SentryFileInputStream;J)V

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/h;->c(Lio/sentry/instrumentation/file/h$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method
