.class public Lbr/com/topaz/k0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Lbr/com/topaz/k0/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbr/com/topaz/k/a;

.field private final c:Lbr/com/topaz/u0/a;

.field private d:Ljava/io/PrintWriter;

.field private e:Lbr/com/topaz/k0/f;

.field private f:Ljava/io/File;

.field private g:Ljava/lang/String;

.field private h:Lbr/com/topaz/k0/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbr/com/topaz/k0/f;Lbr/com/topaz/k/a;Lbr/com/topaz/u0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/k0/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/k0/a;->e:Lbr/com/topaz/k0/f;

    iput-object p3, p0, Lbr/com/topaz/k0/a;->b:Lbr/com/topaz/k/a;

    iput-object p4, p0, Lbr/com/topaz/k0/a;->c:Lbr/com/topaz/u0/a;

    new-instance p1, Lbr/com/topaz/o0/f;

    invoke-direct {p1}, Lbr/com/topaz/o0/f;-><init>()V

    invoke-virtual {p1}, Lbr/com/topaz/o0/f;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/k0/a;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lbr/com/topaz/k0/f;Lbr/com/topaz/k/a;Lbr/com/topaz/u0/a;)Lbr/com/topaz/k0/a;
    .locals 1

    sget-object v0, Lbr/com/topaz/k0/a;->i:Lbr/com/topaz/k0/a;

    if-nez v0, :cond_0

    new-instance v0, Lbr/com/topaz/k0/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lbr/com/topaz/k0/a;-><init>(Landroid/content/Context;Lbr/com/topaz/k0/f;Lbr/com/topaz/k/a;Lbr/com/topaz/u0/a;)V

    sput-object v0, Lbr/com/topaz/k0/a;->i:Lbr/com/topaz/k0/a;

    :cond_0
    sget-object p0, Lbr/com/topaz/k0/a;->i:Lbr/com/topaz/k0/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/k0/a;->f:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbr/com/topaz/k0/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbr/com/topaz/k0/a;->f:Ljava/io/File;

    :cond_0
    iget-object p1, p0, Lbr/com/topaz/k0/a;->f:Ljava/io/File;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lbr/com/topaz/k0/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/k0/a;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/k0/a;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lbr/com/topaz/k0/a;->d:Ljava/io/PrintWriter;

    :cond_2
    iget-object p1, p0, Lbr/com/topaz/k0/a;->d:Ljava/io/PrintWriter;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)Z
    .locals 4

    iget-object v0, p0, Lbr/com/topaz/k0/a;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbr/com/topaz/k0/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lbr/com/topaz/k0/a;->h:Lbr/com/topaz/k0/c;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lbr/com/topaz/k0/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_0
    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    const-class v0, Lbr/com/topaz/k0/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbr/com/topaz/k0/a;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lbr/com/topaz/k0/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbr/com/topaz/k0/a;->d:Ljava/io/PrintWriter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lbr/com/topaz/k0/a;->d:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Lbr/com/topaz/k0/a;->f:Ljava/io/File;

    iput-object v2, p0, Lbr/com/topaz/k0/a;->h:Lbr/com/topaz/k0/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized a(Lbr/com/topaz/k0/c;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/k0/a;->e:Lbr/com/topaz/k0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lbr/com/topaz/k0/f;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lbr/com/topaz/k0/a;->a(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lbr/com/topaz/k0/a;->b:Lbr/com/topaz/k/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lbr/com/topaz/k0/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lbr/com/topaz/k0/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/k/a;->b([B)[B

    move-result-object v0

    invoke-interface {p1}, Lbr/com/topaz/k0/c;->getFileName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lbr/com/topaz/k0/a;->c:Lbr/com/topaz/u0/a;

    invoke-virtual {v1, v0}, Lbr/com/topaz/u0/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbr/com/topaz/k0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Lbr/com/topaz/k0/e;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/k0/a;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbr/com/topaz/k0/a;->d:Ljava/io/PrintWriter;

    :cond_0
    new-instance v0, Lbr/com/topaz/k0/e;

    invoke-direct {v0}, Lbr/com/topaz/k0/e;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/k0/a;->e:Lbr/com/topaz/k0/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lbr/com/topaz/k0/a;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lbr/com/topaz/k0/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lbr/com/topaz/k0/a;->b:Lbr/com/topaz/k/a;

    iget-object v4, p0, Lbr/com/topaz/k0/a;->c:Lbr/com/topaz/u0/a;

    invoke-virtual {v4, v2}, Lbr/com/topaz/u0/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lbr/com/topaz/k/a;->a([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Lbr/com/topaz/k0/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_2
    :try_start_2
    iget-object v1, p0, Lbr/com/topaz/k0/a;->h:Lbr/com/topaz/k0/c;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbr/com/topaz/k0/a;->h:Lbr/com/topaz/k0/c;

    invoke-interface {v2}, Lbr/com/topaz/k0/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/k0/a;->h:Lbr/com/topaz/k0/c;

    invoke-interface {v2}, Lbr/com/topaz/k0/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/k0/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lbr/com/topaz/k0/c;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/k0/a;->h:Lbr/com/topaz/k0/c;

    return-void
.end method
