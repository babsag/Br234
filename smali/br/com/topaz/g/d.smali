.class public Lbr/com/topaz/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbr/com/topaz/l/f0;

.field private final b:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/f0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/g/d;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lbr/com/topaz/g/d;->a:Lbr/com/topaz/l/f0;

    return-void
.end method

.method public static a(Lbr/com/topaz/l/f0;)Lbr/com/topaz/g/d;
    .locals 1

    new-instance v0, Lbr/com/topaz/g/d;

    invoke-direct {v0, p0}, Lbr/com/topaz/g/d;-><init>(Lbr/com/topaz/l/f0;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/g/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    new-instance v0, Lbr/com/topaz/u0/s;

    invoke-direct {v0}, Lbr/com/topaz/u0/s;-><init>()V

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/g/d;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v2, v0}, Lbr/com/topaz/l/f0;->b(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "186"

    invoke-static {v0}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, -0x1

    :goto_0
    iget-object v2, p0, Lbr/com/topaz/g/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :goto_1
    iget-object v1, p0, Lbr/com/topaz/g/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(J)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/g/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    new-instance v0, Lbr/com/topaz/u0/s;

    invoke-direct {v0}, Lbr/com/topaz/u0/s;-><init>()V

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lbr/com/topaz/g/d;->a:Lbr/com/topaz/l/f0;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbr/com/topaz/l/f0;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p1, "185"

    invoke-static {p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p1, p0, Lbr/com/topaz/g/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lbr/com/topaz/g/d;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
