.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/x;
.super Ljava/lang/Object;
.source "SchemaManager.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/scheduling/persistence/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/x;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/x;

    return-object v0
.end method


# virtual methods
.method public upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
