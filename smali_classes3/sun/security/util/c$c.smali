.class Lsun/security/util/c$c;
.super Ljava/lang/ref/SoftReference;
.source "Cache.java"

# interfaces
.implements Lsun/security/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:J


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p1, p0, Lsun/security/util/c$c;->a:Ljava/lang/Object;

    .line 3
    iput-wide p3, p0, Lsun/security/util/c$c;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsun/security/util/c$c;->a:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lsun/security/util/c$c;->b:J

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/c$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isValid(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lsun/security/util/c$c;->b:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lsun/security/util/c$c;->a()V

    :cond_1
    return p1
.end method
