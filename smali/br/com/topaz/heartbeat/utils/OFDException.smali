.class public Lbr/com/topaz/heartbeat/utils/OFDException;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lbr/com/topaz/l/g;


# instance fields
.field private a:Z

.field private b:Lbr/com/topaz/q/f;

.field private c:Lbr/com/topaz/q/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lbr/com/topaz/l/f0;)V
    .locals 1

    new-instance v0, Lbr/com/topaz/q/c;

    invoke-direct {v0, p1}, Lbr/com/topaz/q/c;-><init>(Lbr/com/topaz/l/f0;)V

    invoke-direct {p0, p1, v0}, Lbr/com/topaz/heartbeat/utils/OFDException;-><init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/q/b;)V

    return-void
.end method

.method public constructor <init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/q/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->a:Z

    iput-object p2, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->c:Lbr/com/topaz/q/b;

    :try_start_0
    sget-object p2, Lbr/com/topaz/heartbeat/utils/OFDException;->d:Lbr/com/topaz/l/g;

    if-nez p2, :cond_0

    invoke-interface {p1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object p1

    sput-object p1, Lbr/com/topaz/heartbeat/utils/OFDException;->d:Lbr/com/topaz/l/g;

    :cond_0
    sget-object p1, Lbr/com/topaz/heartbeat/utils/OFDException;->d:Lbr/com/topaz/l/g;

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->m()Lbr/com/topaz/q/f;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->b:Lbr/com/topaz/q/f;

    sget-object p1, Lbr/com/topaz/heartbeat/utils/OFDException;->d:Lbr/com/topaz/l/g;

    invoke-virtual {p1}, Lbr/com/topaz/l/g;->l0()Z

    move-result p1

    iput-boolean p1, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lbr/com/topaz/heartbeat/utils/OFDException;)Lbr/com/topaz/q/f;
    .locals 0

    iget-object p0, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->b:Lbr/com/topaz/q/f;

    return-object p0
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->c:Lbr/com/topaz/q/b;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->b:Lbr/com/topaz/q/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbr/com/topaz/q/f;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lbr/com/topaz/heartbeat/utils/OFDException$a;

    invoke-direct {v2, p0, p1, p2, v0}, Lbr/com/topaz/heartbeat/utils/OFDException$a;-><init>(Lbr/com/topaz/heartbeat/utils/OFDException;Ljava/lang/Exception;Ljava/lang/String;Lbr/com/topaz/q/b;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OFDHB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "999"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/heartbeat/utils/OFDException;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    iget-boolean p2, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->a:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lbr/com/topaz/heartbeat/utils/OFDException;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "OFDEBUG"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
