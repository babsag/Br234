.class Lsun/security/util/c$b;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lsun/security/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:J


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/security/util/c$b;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lsun/security/util/c$b;->b:Ljava/lang/Object;

    .line 4
    iput-wide p3, p0, Lsun/security/util/c$b;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lsun/security/util/c$b;->a:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lsun/security/util/c$b;->b:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lsun/security/util/c$b;->c:J

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/c$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/c$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public isValid(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lsun/security/util/c$b;->c:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lsun/security/util/c$b;->a()V

    :cond_1
    return p1
.end method
