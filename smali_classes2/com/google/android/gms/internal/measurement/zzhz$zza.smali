.class public Lcom/google/android/gms/internal/measurement/zzhz$zza;
.super Lcom/google/android/gms/internal/measurement/zzgg;
.source "com.google.android.gms:play-services-measurement-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzhz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzhz<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzhz$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzgg<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzhz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzhz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzhz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhz;

    .line 3
    sget v0, Lcom/google/android/gms/internal/measurement/zzhz$zzf;->zzd:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhz;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzhz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k5;->a()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/k5;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n5;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/n5;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzhz$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzhd;",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k5;->a()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/k5;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n5;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/w3;->w(Lcom/google/android/gms/internal/measurement/zzhd;)Lcom/google/android/gms/internal/measurement/w3;

    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/n5;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/p5;Lcom/google/android/gms/internal/measurement/zzhm;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 16
    :cond_1
    throw p1
.end method

.method private final zzb([BIILcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzhz$zza;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzih;
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k5;->a()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/k5;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n5;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/gms/internal/measurement/i3;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/i3;-><init>(Lcom/google/android/gms/internal/measurement/zzhm;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/n5;->d(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/i3;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzih; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zza()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 7
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhz;

    .line 2
    sget v1, Lcom/google/android/gms/internal/measurement/zzhz$zzf;->zze:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzhz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz$zza;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzy()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza(Lcom/google/android/gms/internal/measurement/zzhz;)Lcom/google/android/gms/internal/measurement/zzhz$zza;

    return-object v0
.end method

.method public final i_()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza(Lcom/google/android/gms/internal/measurement/zzhz;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza(Lcom/google/android/gms/internal/measurement/zzhz;)Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb(Lcom/google/android/gms/internal/measurement/zzhd;Lcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BII)Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzih;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->zza()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb([BIILcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzih;
        }
    .end annotation

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb([BIILcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzhz;)Lcom/google/android/gms/internal/measurement/zzhz$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza(Lcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzhz;)V

    return-object p0
.end method

.method public final synthetic zzaa()Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzhz;

    return-object v0
.end method

.method public final synthetic zzt()Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz$zza;

    return-object v0
.end method

.method protected zzu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    sget v1, Lcom/google/android/gms/internal/measurement/zzhz$zzf;->zzd:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzhz;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza(Lcom/google/android/gms/internal/measurement/zzhz;Lcom/google/android/gms/internal/measurement/zzhz;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    return-void
.end method

.method public zzw()Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k5;->a()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/k5;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n5;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/n5;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    return-object v0
.end method

.method public final zzx()Lcom/google/android/gms/internal/measurement/zzhz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzy()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhz;->i_()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzks;-><init>(Lcom/google/android/gms/internal/measurement/zzjh;)V

    .line 4
    throw v1
.end method

.method public synthetic zzy()Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzw()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzz()Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzx()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v0

    return-object v0
.end method
