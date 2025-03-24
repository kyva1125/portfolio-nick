import 'package:flutter/material.dart';

class ItemPortfolio extends StatelessWidget {
  ItemPortfolio({
    super.key,
    required this.imagePortada,
    required this.imagesList,
  });

  final String imagePortada; // Ruta del asset local
  final List<String> imagesList; // Lista de rutas de assets locales

  void _showPhotoViewerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return PhotoViewerDialog(
          photos: imagesList,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showPhotoViewerDialog(context),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePortada), // Solo cargamos imágenes locales
                fit: BoxFit.cover,
                onError: (error, stackTrace) {
                  debugPrint('Error al cargar la imagen: $error');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoViewerDialog extends StatefulWidget {
  final List<String> photos;

  const PhotoViewerDialog({
    Key? key,
    required this.photos,
  }) : super(key: key);

  @override
  _PhotoViewerDialogState createState() => _PhotoViewerDialogState();
}

class _PhotoViewerDialogState extends State<PhotoViewerDialog> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  void _nextPhoto() {
    if (_currentIndex < widget.photos.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _previousPhoto() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.black,
      child: Stack(
        children: [
          // Imagen actual
          Center(
            child: Image.asset(
              widget.photos[_currentIndex], // Cargamos imágenes locales
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Text(
                    'Error al cargar la imagen',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),

          // Flecha izquierda
          if (_currentIndex > 0)
            Positioned(
              left: 10,
              top: 0,
              bottom: 0,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: _previousPhoto,
                iconSize: 40,
              ),
            ),

          // Flecha derecha
          if (_currentIndex < widget.photos.length - 1)
            Positioned(
              right: 10,
              top: 0,
              bottom: 0,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                onPressed: _nextPhoto,
                iconSize: 40,
              ),
            ),

          // Botón para cerrar el diálogo
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
