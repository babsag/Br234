.class public final Lcom/google/android/odml/image/MlImage$Internal;
.super Ljava/lang/Object;
.source "com.google.android.odml:image@@1.0.0-beta1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/odml/image/MlImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Internal"
.end annotation


# instance fields
.field private final a:Lcom/google/android/odml/image/MlImage;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/odml/image/MlImage;Lcom/google/android/odml/image/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/MlImage$Internal;->a:Lcom/google/android/odml/image/MlImage;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/odml/image/MlImage$Internal;->a:Lcom/google/android/odml/image/MlImage;

    .line 1
    invoke-static {v0}, Lcom/google/android/odml/image/MlImage;->b(Lcom/google/android/odml/image/MlImage;)V

    return-void
.end method
