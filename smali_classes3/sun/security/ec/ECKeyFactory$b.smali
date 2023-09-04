.class final Lsun/security/ec/ECKeyFactory$b;
.super Ljava/lang/Object;
.source "ECKeyFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ec/ECKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsun/security/ec/ECKeyFactory$b;->a:Ljava/security/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$b;->a:Ljava/security/Provider;

    const-string v1, "KeyFactory.EC"

    const-string v2, "sun.security.ec.ECKeyFactory"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$b;->a:Ljava/security/Provider;

    const-string v1, "AlgorithmParameters.EC"

    const-string v2, "sun.security.ec.ECParameters"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lsun/security/ec/ECKeyFactory$b;->a:Ljava/security/Provider;

    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.10045.2.1"

    const-string v2, "EC"

    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/security/ec/ECKeyFactory$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
