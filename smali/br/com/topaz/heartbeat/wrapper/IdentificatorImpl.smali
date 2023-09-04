.class public Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/w0/b;


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field private a:Lbr/com/topaz/l/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "digest"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OFDHB:033"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/l/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->b:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a:Lbr/com/topaz/l/c;

    return-void
.end method

.method private declared-synchronized a(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-static {}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->getNativeDigest1()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-static {}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->getNativeDigest2()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:033"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->function394(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:033"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a:Lbr/com/topaz/l/c;

    invoke-virtual {v1, v0}, Lbr/com/topaz/l/c;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a:Lbr/com/topaz/l/c;

    invoke-virtual {v1, v0}, Lbr/com/topaz/l/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private static native function394(I)Ljava/lang/String;
.end method

.method private g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a:Lbr/com/topaz/l/c;

    invoke-virtual {v0}, Lbr/com/topaz/l/c;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static native getNativeDigest1()Ljava/lang/String;
.end method

.method private static native getNativeDigest2()Ljava/lang/String;
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a:Lbr/com/topaz/l/c;

    invoke-virtual {v0}, Lbr/com/topaz/l/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a:Lbr/com/topaz/l/c;

    invoke-virtual {v0}, Lbr/com/topaz/l/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a:Lbr/com/topaz/l/c;

    invoke-virtual {v0}, Lbr/com/topaz/l/c;->b()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->g()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->a:Lbr/com/topaz/l/c;

    invoke-virtual {v0}, Lbr/com/topaz/l/c;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
