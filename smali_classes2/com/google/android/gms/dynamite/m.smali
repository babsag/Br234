.class final Lcom/google/android/gms/dynamite/m;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/dynamite/m;->a:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    iget p1, p0, Lcom/google/android/gms/dynamite/m;->a:I

    return p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
